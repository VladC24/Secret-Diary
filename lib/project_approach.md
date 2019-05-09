# Secret Diary Challenge


In this challenge, I have explicity made this file so that I can show how I am going through the exercise, method after method, including all erors and available tests.

It starts:


Rspec Errors:

```
Failure/Error:
  describe SecretDiary do

  end

NameError:
  uninitialized constant SecretDiary
# ./spec/secret_spec.rb:1
```
---

IRB Errors:
```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007f9768165f88>
2.6.0 :003 > diary.locked
Traceback (most recent call last):
        4: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/kiri/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `locked' for #<SecretDiary:0x00007f9768165f88>)
```

Rspec Error:

```
Failure/Error: expect(subject.lock).to eq(true)

NoMethodError:
  undefined method `lock' for #<SecretDiary:0x00007f980eb22ed0>
# ./spec/secret_spec.rb:7
```
Added lock method

```
Failure/Error: expect(subject.lock).to eq(true)

       expected: true
            got: nil

       (compared using ==)
     # ./spec/secret_spec.rb:7
```
Added locked = true inside lock method

IRB Feature Test:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007f83ec068de0>
2.6.0 :003 > diary.lock
 => true
2.6.0 :004 > diary.lock
 => true
```
---



