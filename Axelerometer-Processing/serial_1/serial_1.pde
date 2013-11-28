import processing.serial.*;
Serial port;
String brightness ;

void setup()
{
  size(500, 500);
  port = new Serial(this, "COM6", 9600);
  port.bufferUntil('\n');
}
void draw()
{
  
}

void serialEvent (Serial port)
{
brightness = port.readString();
println(brightness);
}
