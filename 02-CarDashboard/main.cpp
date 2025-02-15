#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main(int argc, char *argv[])
{
    QQmlApplicationEngine engine;
    QGuiApplication app(argc, argv);
    // Load styles from QQUickStyle Module (Lib)
    // ==>> (  Material  Fusion  universal  imagine )
    QQuickStyle::setStyle("Material");

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("CarDashboard", "Main");

    return app.exec();
}
