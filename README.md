Object Oriented Code 1, Encapsulation & Cohesion

Secret Diary Practical:


Learning goals:
Encapsulate program behaviour into cohesive classes.
Aim for "low coupling and high cohesion".

Cohesion
Each class should have one purpose or job, sometimes referred to as its responsibility.
A class has high cohesion when everything inside of it relates to that purpose, without anything extraneous.

Secret Diary Challenge
Test-drive the secret diary example: Uses TDD and the red-green-refactor process.

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as intended.

When the user calls `lock` again, errors are raised. 

First organise everything into one class only.

Then, when all your tests are green, reorganise it into classes with high cohesion. 

To see the project approach [click here](https://github.com/VladC24/Secret-Diary/commit/8c5b5e1316e6c873594f66384c24f9fa871b2024).  I have also used delegation.

