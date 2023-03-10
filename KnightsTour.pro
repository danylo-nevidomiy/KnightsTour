QT += quick core widgets quickwidgets
CONFIG += c++11

SOURCES += \
    agregatorgetter.cpp \
    board.cpp \
    dimensionslist.cpp \
    main.cpp \
    queuedispatcher.cpp \
    tourfinder.cpp \
    toursagregator.cpp

#resources.files = main.qml
#resources.prefix = /$${TARGET}
RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    agregatorgetter.h \
    board.h \
    dimensionslist.h \
    queuedispatcher.h \
    tourfinder.h \
    toursagregator.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

contains(ANDROID_TARGET_ARCH,arm64-v8a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}

