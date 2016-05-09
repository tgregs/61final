# Final exam for CST 112  
<P ALIGN=RIGHT>(2016 May 9)</P>

**Fork this repo to your Github account.  
Create new file named "``Final-Lastname.pde``".**   _(Use your own last name instead of “Lastname”.)_  
**Copy your project 5 code into this file, then modify it to meet the specifications below.**

#### 1. Modify your **``Person``** class, as follows:
- Add a new integer property for **``age``** (in years only).
- Add a new integer property for **``salary``** (in whole dollars)
	- Initialize **``age``** with a random value from 1 to 99  
	- Random value from 1,000 to 100,000 for **``salary``** _(if**``age``** >= 18)._  
- Add at least two new **constructors**, with different numbers of arguments.
- Change the **``show()``** method to display age & salary (after a $ dollar-sign).
- Add a method  **``raise( float pct )``**  to increase the salary by pct % (percent).
- Add method  **``bonus( int amt )``**  to increase salary by $ amt (if age>=18).

#### 2. Create another array of **``Person[]``** objects.  
- The array name should begin with the first 3 letters of **your** first-name.
- The array should contain exactly eleven Person objects.
- Construct each **``Person``** object with different values for its properties.
- Compute and display average salary (age >= 18 only) for each of the two arrays.

#### 3. Change the screen size to 750 (width) by 550 (height).  
- Do __not__ assume screen size is constant.  (Use **``width``** & **`height`** variables!)
    - *All features should display properly for any reasonable width or height.* 
- Display your first-name and last-name somewhere on the screen.
- Change the scene to indicate which array is being displayed.  ***(See below.)***
    - Light blue background, with a yellow sun in the sky, for old array.
    - Change to a darker sky and a full moon, for new array.
- Blades of “grass” along bottom of screen (green lines, evenly-spaced) 
    - Grass leans LEFT when old array is shown; RIGHT for new array

#### 4. Add some buttons and display them on the screen.

- **RAISE** button:  Give every **``Person``** (in both arrays) a raise:  
  - If the salary is under 25,000 then give a 20% raise.  
  - If salary is between 25,000 and 50,000 then give a 15% raise.  
  - If salary is between 50,000 and 75,000 then give a 10% raise.
  - If salary is over 75,000 then give a 5% raise.
  - _(There is no need to change the **``Person``** class.)_

- **BONUS** button:  Every **``Person``** (both arrays) gets $ 1000 bonus (if age>=18).

- **CHANGE** button:  Display the new array instead of old, when clicked.  
  - resume displaying old array if it is clicked again.  
  - (Show new array for odd number of clicks; old array for even.)
 
- Add some **``keyPressed()``** code for:
    - ‘1’ key for RAISE, ‘2’ for BONUS, ‘3’ for CHANGE
    - ‘r’ key to reset both arrays with (random) values; ‘q’ to quit.

___
#### Readability and good coding practices are important:
- Before each function you write, there should be a comment line stating its __purpose__.  
- Points will be deducted for uncommented functions, meaningless variable names, lack of modularization, inconsistent indentation within code blocks, and other poor software practices that impair **readability** of code.  
- *Points will be added for excellent readability.*

___
#### NOTE:  To be graded, your final exam must meet ALL of the following conditions:
- Your code must __compile__ and __run__ *(in the Processing PDE)*
- Your full __name__ must be included within the first few lines of the file *(in a comment line or String)*
	- Your name should also appear on the screen (in the lower-left corner).
- Your code must be in a file named **`final-lastname.pde`** _(where_ **`lastname`** _is your own last name_).
	- This file must be in a repository named **`61final`** forked from https://github.com/61cst112/61final
	- This repository must be in your Github.com account on http://github.com

**Final exam code will not be accepted unless it meets ALL of these conditions .**

