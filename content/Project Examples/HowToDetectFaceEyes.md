# Face Detection Using OpenCV

## What is OpenCV
OpenCV (Open Source Computer Vision) is released under a BSD license and hence it’s free for both academic and commercial use. It has C++, C, Python and Java interfaces and supports Windows, Linux, Mac OS, iOS and Android. OpenCV was designed for computational efficiency and with a strong focus on real-time applications. Written in
optimized C/C++, the library can take advantage of multi-core processing.

Adopted all around the world, OpenCV has more than 47 thousand people of user community and estimated number of downloads exceeding 9 million. Usage ranges from interactive art, to mines detection, online maps and advanced robotics.

# Face Detection

### Step 1：Install  Visual Studio 2015 and OpenCV

1. Install Visual Studio 2015 on your computer

Head over to https://www.visualstudio.com/products/visual-studio-professional-with-msdn-vs and download Visual Studio Professional 2015. Unzip the downloaded file and double-click the 'vs_professional.exe', then the installation process will begin.

2. Install OpenCV

1) Head over to the site: http://www.opencv.org and download the latest version of OpenCV (shown in the following figure). Choose the version according to your operating system.

In this tutorial we are going to install OpenCV 3.1 using Visual Studio 2015 professional on a 64-bit system running Windows 10.
![](..\resources\images\imageOpenCVDownload.png)

2) Extract the downloaded OpenCV file
Double click the downloaded OpenCV file, and then extract it
![](..\resources\images\extractOpenCV.png)

### Step 3: Set the Environment Variables

1. To do this step, open the Control Panel and then System. Click the Advanced System Settings, last Environment Variables in turns as show in the following figure.
![](..\resources\images\variables1.png)

2.Edit the PATH environment variables and Add a new environment variable, then give it the value of `F:\opencv\build\x64\vc14\bin`. Note that change the value depends on the path where you have extracted your OpenCV in step 2.
![](..\resources\images\variables2.png)

### Step 4: Create a new project in Visual Studio 2015

1. In Visual Studio 2015, create a new project to follow the steps in turns as the following figure shows

![](..\resources\images\newproject1.png)

2. Select Win32 Console Application in Visual C++, then name your project and select a directory to store it
![](..\resources\images\newproject2.png)

3. Choose the empty project and click finish
![](..\resources\images\newproject3.png)

4. Add a new cpp file
![](..\resources\images\newproject4.png)

![](..\resources\images\newproject5.png)

### Step 5: Configure OpenCV in Visual Studio 2015

1. Open the Property Manager and double click Debug|Win64
![](..\resources\images\property1.png)

2. Select "Include Directories", and give it the following values:

    F:\opencv\build\include
    F:\opencv\build\include\opencv    
    F:\opencv\build\include\opencv2

Remember that change the value depending on the path you have extracted your OpenCV files to in step 2.
![](..\resources\images\property2.png)

3. Add Library Directories, give the value of
`F:\opencv\build\x64\vc14\lib`. Remember that changing the values depends on the path where you have extracted your OpenCV in step 2
![](..\resources\images\property3.png)

4.Add additional dependences

Copy the following item and paste it in additional Dependences blank
`opencv_world310d.lib`  
![](..\resources\images\property4.png)

### Step 6: Paste the following code to the .cpp file your added in step 4.
```
#include<opencv2\objdetect\objdetect.hpp>
#include<opencv2\highgui\highgui.hpp>
#include<opencv2\imgproc\imgproc.hpp>
#include<iostream>
#include<stdio.h>

using namespace std;
using namespace cv;

string harrEye = "..\\..\\..\\resources\\harr\\haarcascade_eye_tree_eyeglasses.xml";
string harrFace = "..\\..\\..\\resources\\harr\\haarcascade_frontalface_alt.xml";
CascadeClassifier faceCascade;
CascadeClassifier EyeCascade;
string windownName = "Capture faces and eyes ";
void detectAndDiapley(Mat frame);

int main()
{
	Mat frame;

	// load the cascades
	if (!EyeCascade.load(harrEye))
		cout << "load harrEye failed" << endl;
	if (!faceCascade.load(harrFace))
		cout << "load harrFace failed" << endl;

	// read the video stream
	VideoCapture capture(0);
	if (capture.isOpened())
	{
		while (true)
		{
			capture >> frame;

			// apply the cascaders to the frame
			if (!frame.empty())
			{
				detectAndDiapley(frame);
			}
			else
			{
				cout << "input video frame is empty" << endl;
			}
			if (waitKey(30) >= 0)break;
		}
	}
	return 0;
}

void detectAndDiapley(Mat frame)
{
	vector<Rect> faces;
	Mat frameGray;
	cvtColor(frame, frameGray, CV_BGR2GRAY);
	equalizeHist(frameGray, frameGray);

	//Detect faces
	faceCascade.detectMultiScale(frameGray, faces, 1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, Size(30, 30));
	for (int i = 0; i < faces.size(); i++)
	{
		Point Vertex1(faces[i].x, faces[i].y);
		Point Vertex2(faces[i].x + faces[i].width, faces[i].y + faces[i].height);
		rectangle(frame, Vertex1, Vertex2, Scalar(0, 0, 255), 2, 8, 0);
		Mat faceROI = frameGray(faces[i]);
		vector<Rect> eyes;

		// detect eyes in each face
		EyeCascade.detectMultiScale(faceROI, eyes, 1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, Size(30, 30));
		for (int j = 0; j < eyes.size(); j++)
		{
			Point center(faces[i].x + eyes[j].x + eyes[j].width / 2, faces[i].y + eyes[j].y + eyes[j].height / 2);			
      int radius = cvRound((eyes[j].width + eyes[j].height)*0.25);
			Size axes(eyes[j].width / 2, 13);
			ellipse(frame, center, axes, 0, 0, 360, Scalar(255, 255, 0), 2, 8, 0);
		}
	}
	// show the faces and eyes detected
	imshow(windownName, frame);
}
```
### Step 7: Debug your Project
Set two options as following figure shows:
![](..\resources\images\SetMode.png)

Press F5 to execute the face detection project, your PC camera will turn on and your face and eyes will be highlighted like so:
![](..\resources\images\Lena.png)

##  References:

  1.http://www.michaelpsyllakis.com/install-opencv-on-visual-studio-2015-community-tutorial/
  2.http://docs.opencv.org/2.4/opencv_tutorials.pdf  
  3.http://docs.opencv.org/2.4/opencv2refman.pdf
