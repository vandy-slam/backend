from math import ceil
from google.cloud import storage
from google.oauth2 import service_account
import os
from PIL import Image


class Downloader:

    def __init__(self):
        credentials = service_account.Credentials.from_service_account_file("./dore-tours-vandy-d94b025a43ae.json")
        scoped_credentials = credentials.with_scopes(['https://www.googleapis.com/auth/cloud-platform'])

        storage_client = storage.Client(credentials=scoped_credentials)
        # The name for the new bucket
        bucket_name = 'dore-tours-vandy.appspot.com'

        # Creates the new bucket
        self._bucket = storage_client.get_bucket(bucket_name)

    def get_directories(self):
        unique_directories = set()
        for blob in self._bucket.list_blobs():
            unique_directories.add(blob.name.split("/")[0])
        image_directories = [x for x in unique_directories]
        return image_directories

    def get_images(self, directory):
        return [self._bucket.get_blob(blob.name).download_as_string() for blob in self._bucket.list_blobs(prefix=directory)]

    def save_images(self, directory):
        path = os.getcwd() + "/Images/"
        if os.path.exists(path + directory):
            current_imgs = os.listdir(path + directory)
        else:
            os.mkdir(path + directory)
            current_imgs = []
        for blob in self._bucket.list_blobs(prefix=directory):
            if blob.name.split("/")[1] not in current_imgs:
                self._bucket.blob(blob.name).download_to_filename(path + blob.name)
