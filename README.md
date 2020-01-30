#README
mogoče bo to taprva stran...

## readme more
člkj ačsdlkjfčalks djčlaks jdfčalksd jfa
čalk sjčflka jsdčflkj 

# PROJECTS

* [RobDuino-v2](https://davidrihtarsic.github.io/RobDuino/)

# LUNKS
* [this link](https://davidrihtarsic.github.io/another_file.html)

# CODE

```c++
void loop()
{
  if (TipkaC4.down()){
    i = i<<1;
    if (i>255) i = 1;
  }
  if (TipkaC5.down()){
    i = i>>1;
    if (i<1) i = 128;
  }
  PORTD = i;
  delay(200);
}
```
