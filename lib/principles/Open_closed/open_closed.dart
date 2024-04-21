//Wrong Open closed
class Rectangle {
  final int height;
  final int width;
  const Rectangle({required this.height, required this.width});
  drawRectange() {
    return height * width;
  }
}

class Square {
  final int height;
  const Square({required this.height});
  drawSquare() {
    return height * height;
  }
}

class ShapePrinter {
  drawShape(var shape) {
    if (shape is Rectangle) {
      shape.drawRectange();
    } else if (shape is Square) {
      shape.drawSquare();
    }
//كدا كل مره عايز اضيف فيها شكل جديد هضطر اعدل في الفنكشن دي ودا غلط
  }
}

//The right way
abstract class Shape {
  const Shape();
  draw();
}

class NewRectangle extends Shape {
  final int height;
  final int width;
  const NewRectangle({required this.height, required this.width});
  @override
  draw() {
    return height * width;
  }
}

class NewSquare extends Shape {
  final int height;
  const NewSquare({required this.height});
  @override
  draw() {
    return height * height;
  }
}

class NewShapePrinter {
  drawShape(Shape shape) {
    shape.draw();
  }
}
