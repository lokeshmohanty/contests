# CMI - Detect Behavior with Sensor Data

Predicting Body Focused Repetitive Behaviors from a Wrist-Worn Device

BFRB: Body-focused repetitive behaviors
Eg: hair pulling, skin picking

Goal: distinguish BFRB from non-BFRB tasks, and identify which BFRB

Sensors:
    - TOF: Time of Flight (proximity)
    - TMP: Thermopile (temperature)
    - IMU: Inertial Measurement Unit (movement, rotation)

Body positions:
    - sitting
    - sitting leaning forward with non-dominant arm resting on leg
    - lying on their back
    - lying on their side

Gestures: 8 BFRB, 10 non-BFRB

BFRB
    Above ear - Pull hair
    Forehead - Pull hairline
    Forehead - Scratch
    Eyebrow - Pull hair
    Eyelash - Pull hair
    Neck - Pinch skin
    Neck - Scratch
    Cheek - Pinch skin

non-BRFB
    Drink from bottle/cup
    Glasses on/off
    Pull air toward your face
    Pinch knee/leg skin
    Scratch knee/leg skin
    Write name on leg
    Text on phone
    Feel around in tray and pull out an object
    Write name in air
    Wave hello

Evaluation:
    1. Binary F1 (target, non-target)
    2. Macro F1 ({...target}, non-target)
