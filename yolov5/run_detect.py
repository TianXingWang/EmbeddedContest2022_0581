import cv2
import os

if __name__ == "__main__":
    cam = cv2.VideoCapture(0)
    imgc = 0
    while cam.isOpened():
        ret, frame = cam.read()
        cv2.imshow("test", frame)
        img_name = "opencv_frame_{}.png".format(imgc)
        cv2.imwrite(img_name, frame)
        os.system("/loongson/home/Desktop/ncnn/build/example/yolov5" + img_name)
        if not ret:
            break
    cam.release()
    cv2.destroyAllWindows()
