
//base class for Application loop
#include <QApplication>
#include <QImage>
#include <QLabel>
#include "World.h"

// base class for all kind of Qt widget
#include <QtGui>

int main(int argc , char *argv[])
{      
    
    
    World w;
    w.build();
    w.render_scene();

    
    
    
        //start a main app instance
    QApplication app(argc , argv);
    QGraphicsView myView;
    QGraphicsScene myscene;
    myView.setScene(&myscene);
    
    
    myscene.addPixmap( QPixmap::fromImage(w.getImage() ) );
    
    myView.show();
    myView.update();
    w.save_image();

    

    
    


        // return and start the main application loop
  //      return 0;
    
        return app.exec();


}

