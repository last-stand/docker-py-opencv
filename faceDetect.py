import cv2
import sys
import uuid

if sys.argv[1:]:
    cascPath = sys.argv[1]
else:
    cascPath ='/usr/local/Cellar/opencv3/HEAD-9c90a5f_4/share/OpenCV/haarcascades/haarcascade_frontalface_default.xml'
faceCascade = cv2.CascadeClassifier(cascPath)
video_capture = cv2.VideoCapture(0)

while True:
    # Capture frame-by-frame
    ret, frame = video_capture.read()

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    faces = faceCascade.detectMultiScale(
        gray,
        scaleFactor=1.1,
        minNeighbors=5,
        minSize=(30, 30),
        flags=cv2.CASCADE_SCALE_IMAGE
    )

    # Draw a rectangle around the faces
    for (x, y, w, h) in faces:
        cv2.rectangle(frame, (x, y), (x+w, y+h), (0, 255, 0), 2)

    # Display the resulting frame
    cv2.imshow('Video', frame)
    key = cv2.waitKey(1)
    if key == 27:  # wait for ESC key to exit
        break
    elif key & 0xFF == ord('s'):
        uid = uuid.uuid4()
        uid_str = uid.urn
        cv2.imwrite(uid_str[9:] + '.png',frame)
        print 'image captured...'
        break

# When everything is done, release the capture
video_capture.release()
cv2.destroyAllWindows()
