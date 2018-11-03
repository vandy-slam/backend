# backend

# Endpoints

Base url: https://vandyhacks-slam.herokuapp.com/

## map
- path: map
- request type: GET
- expected query parameters: none
- output: json with coords of point cloud map (see bottom for example)

## start navigation (MUST BE HIT WITH USER ID BEFORE STARTING NAVIGATION)
- path: directions/start
- request type: POST
- expected form parameters: 'user', 'destination', 'map_name'
- output: "OK" if things went alright

## take navigation step
- path: directions/step
- request-type: POST
- expected form parameters: 'user', 'image'
- output: user's current orientation, target orientation, and user's current position (see bottom for examples)

## end navigation (pls hit me when you reach the target destination)
- path: directions/end
- request-type: POST
- expected form parameters: 'user'
- output: "OK" if things went alright

# Data
## Inputs
- Images should be POSTed to the API as...umm...tbd someone should figure that out

## Outputs
Everything comes back atcha as JSON
- Point cloud map looks like the following:
{ 1:
    { x: 0,
      y: 0,
    },
  2:
    { x: 8,
      y: 8,
    }
}
- Orientation: simple x,y vector like so: {x: 0, y: 0}
- Position: simple x,y vector like so: (x: 0, y: 0}
