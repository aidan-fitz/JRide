JRide
=====

Roller coaster simulator. Aidan and Ben's final project for APCS 1/2.

### Changelog
- **Dec 23** Aidan made boilerplate code (`setup()`, `draw()`, and `Cart`)
- **Jan 05-07** Aidan designed the `Track` class, which uses `Track.Generator` to generate a smoothly changing stream of random `float` values
- **Jan 06-08** Ben created the `VelocityAlgorithm` class which calculates the cart's speed based on forces and energy
- **Jan 08** Aidan added code that calculates velocity based on potential and kinetic energy to the `Cart` class
- **Jan 09**
    - Ben is working on friction and bombs, both of which affect the cart's kinetic energy.
    - Aidan is working on variable scroll speed.
- **Jan 12** Ben created a function to calculate work done by friction in `VelocityAlgorithm.java`
- **Jan 13**
    - Integrated friction function into `Cart.pde`, but it returns the force, not work; still need to multiply by some value for distance
    - Deleted `VelocityAlgorithm.java` (see [`d336b`](https://github.com/aidan-fitz/JRide/commit/d336b))
- **Jan 14**
    - Added `Cart.workFriction()`, which returns work done by friction on the cart in one frame
    - Fixed bug where track would move in wrong direction
- **Jan 15**
    - Aidan was absent
    - Ben added `Bomb`, `Monster`, and `StartFile` classes
    - `StartFile` contains instructions for user
- **Jan 16**
    - Aidan deleted `StartFile` and moved the instructions to a plain text file
    - Aidan attempted a workaround for the disappearing track blog (track is displaced NaN pixels because `Cart.speed()` takes the square root of a negative number
- **Jan 18**
    - Aidan created branch `cruft`
    - Deleted `Bomb`, `Monster`
    - Set base mechanical energy of cart relative to screen height, not initial height of cart, so that *kinetic energy is always positive*
    - Divide velocity by constant (`8.0`) internally, so that screen will scroll slower