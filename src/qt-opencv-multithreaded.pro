QT += core gui

#QT_CONFIG -= no-pkg-config
#CONFIG += link_pkgconfig
#PKGCONFIG += opencv

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qt-opencv-multithreaded
TEMPLATE = app

DEFINES += APP_VERSION=\\\"3.2.0\\\"

SOURCES += main.cpp \
    MainWindow.cpp \
    MatToQImage.cpp \
    FrameLabel.cpp \
    CameraView.cpp \
    ProcessingThread.cpp \
    CaptureThread.cpp \
    CameraConnectDialog.cpp \
    ImageProcessingSettingsDialog.cpp \
    SharedImageBuffer.cpp \
    FaceDetect.cpp

HEADERS += \
    MainWindow.h \
    Config.h \
    MatToQImage.h \
    FrameLabel.h \
    Structures.h \
    CameraView.h \
    ProcessingThread.h \
    CaptureThread.h \
    CameraConnectDialog.h \
    ImageProcessingSettingsDialog.h \
    SharedImageBuffer.h \
    Buffer.h \
    DefaultValues.h \
    FaceDetect.h
    win32 {
        INCLUDEPATH += "D:\\OpenCV2.4.9\\build\\include" \

        CONFIG(debug,debug|release) {
            LIBS += -L"D:\\OpenCV2.4.9\\build\\x64\\vc12\\lib" \
                -lopencv_core249d \
                -lopencv_highgui249d \
                -lopencv_imgproc249d \
    #            -lopencv_features2d249d \
    #            -lopencv_calib3d249d
        }

        CONFIG(release,debug|release) {
            DEFINES += QT_NO_WARNING_OUTPUT QT_NO_DEBUG_OUTPUT
            LIBS += -L"D:\\OpenCV2.4.9\\build\\x64\\vc12\\lib" \
                -lopencv_core249 \
                -lopencv_highgui249 \
                -lopencv_imgproc249 \
    #            -lopencv_features2d249 \
    #            -lopencv_calib3d249
        }
    }


    unix {
    #    QT_CONFIG -= no-pkg-config
    #    CONFIG += link_pkgconfig
    #    PKGCONFIG += opencv
        QMAKE_CXXFLAGS += -std=c++1y
        QMAKE_CXXFLAGS += -Wall
        # OpenCv Configuration opencv-4.2.0
        INCLUDEPATH += "/usr/include/opencv4/opencv2"
        INCLUDEPATH += "/usr/include/opencv4"
        LIBS += -L~/usr/lib/x86_64-linux-gnu \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_imgproc \
        -lopencv_imgcodecs \
        -lopencv_objdetect \
        -lopencv_features2d \
        -lopencv_calib3d \
        -lopencv_video\
        -lopencv_videoio

    #    INCLUDEPATH += /usr/local/include/opencv
    #    LIBS += -L/usr/local/lib -lopencv_core -lopencv_highgui
    }

#INCLUDEPATH += "~/opencv-3.3.0/opencv/include"
#INCLUDEPATH += "~/opencv-3.3.0/opencv/include/opencv"

#LIBS += -L~/opencv-3.3.0/build/bin \
#-lopencv_core \
#-lopencv_highgui \
#-lopencv_imgproc \
#-lopencv_features2d \
#-lopencv_calib3d \
#-lopencv_objdetect \
#-lopencv_video\
#-lopencv_videoio

##INCLUDEPATH += C:\Users\user\Documents\Tugas_Kampus\DSP\opencv-3.2.0\install\include \
##C:\Users\user\Documents\Tugas_Kampus\DSP\opencv-3.2.0\install\include\opencv\

##LIBS += -LC:\Users\user\Documents\Tugas_Kampus\DSP\opencv-3.2.0\install\x86\mingw\bin\
##-lopencv_core320 \
##-lopencv_highgui320 \
##-lopencv_imgproc320 \
##-lopencv_features2d320 \
##-lopencv_calib3d320 \
##-lopencv_videoio320 \
##-lopencv_ml320 \
##-lopencv_objdetect320 \
###-lopencv_contrib320 \
###-lopencv_legacy320 \
##-lopencv_flann320

FORMS += \
    MainWindow.ui \
    CameraView.ui \
    CameraConnectDialog.ui \
    ImageProcessingSettingsDialog.ui

QMAKE_CXXFLAGS += -Wall
