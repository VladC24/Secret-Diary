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


IRB Errors:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007ff06990c728>
2.6.0 :003 > diary.add_entry
Traceback (most recent call last):
        4: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/kiri/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `add_entry' for #<SecretDiary:0x00007ff06990c728>)
```
We start creating the Rspec test

Rspec Errors:


```
Failure/Error: expect(subject.add_entry).to eq("One of the best day at Makers today!")

     NoMethodError:
       undefined method `add_entry' for #<SecretDiary:0x00007fb5ac1f2750>
     # ./spec/secret_spec.rb:10
```

Added add_entry method

```
Failure/Error: expect(subject.add_entry).to eq("One of the best day at Makers today!")

       expected: "One of the best day at Makers today!"
            got: nil

       (compared using ==)
     # ./spec/secret_spec.rb:10
```

Return a string

IRB Feature Test:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007fb2ad12fa68 @entry=nil, @entries=[]>
2.6.0 :003 > diary.add_entry("One of the best day at Makers today")
 => "One of the best day at Makers today"
```
---

Rspec Error:

```
Failure/Error: expect(subject.get_entries).to eq(entries)

     NoMethodError:
       undefined method `get_entries' for #<SecretDiary:0x00007f8ab11be4f8 @entry=nil, @entries=[]>
     # ./spec/secret_spec.rb:19
```

Added get_entries method

```
Failure/Error: expect(subject.get_entries).to eq(:entries)

       expected: :entries
            got: [nil]

       (compared using ==)

       Diff:
       @@ -1,2 +1,2 @@
       -:entries
       +[nil]

     # ./spec/secret_spec.rb:19
```

Mocked the SecretDiary class to receive get_entries method and return an empty array

IRB Feature Test:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007fca4e937900 @entry=nil, @entries=[]>
2.6.0 :003 > diary.add_entry("Hello, world!")
 => "Hello, world!"
2.6.0 :004 > diary.get_entries
 => ["Hello, world!"]
2.6.0 :005 > diary.add_entry("Hello, all")
 => "Hello, all"
2.6.0 :006 > diary.get_entries
 => ["Hello, world!", "Hello, all"]
```
---

IRB Error:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007f8d61032708 @entry=nil, @entries=[]>
2.6.0 :003 > diary.unlock
Traceback (most recent call last):
        4: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/kiri/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `unlock' for #<SecretDiary:0x00007f8d61032708 @entry=nil, @entries=[]>)
Did you mean?  lock
```


Rspec Error:

```
 Failure/Error: expect(subject.unlock).to eq(true)

     NoMethodError:
       undefined method `unlock' for #<SecretDiary:0x00007f8e0aa7fd88 @entry=nil, @entries=[]>
       Did you mean?  lock
     # ./spec/secret_spec.rb:26
```

Added method unlock which calls false and unlocks the diary.

```
Failure/Error: expect(subject.get_entries).to raise_error("Diary is locked!")
       expected Exception with "Diary is locked!" but was not given a block
     # ./spec/secret_spec.rb:27
```
Added exception if the diary is locked

IRB Feature Test:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007f85dd11e828 @entry=nil, @entries=[], @locked=true, @unlocked=false>
2.6.0 :003 > diary.add_entry("Hello")
 => "Hello"
2.6.0 :004 > diary.get_entries
Traceback (most recent call last):
        5: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        4: from /Users/kiri/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        3: from /Users/kiri/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):4
        1: from /Users/kiri/Documents/GitHub/secret-diary/lib/secret.rb:20:in `get_entries'
RuntimeError (Diary is locked!)
2.6.0 :005 > diary.unlock
 => false
2.6.0 :006 > diary.get_entries
 => ["Hello"]
```
---

Break SecretDiary class in two classes. Create another file, secret_security.rb for the SecretSecurity class which will use the funcionality methods of SecretDiary initial class (lock, unlock)

```
Failure/Error: expect(subject.lock).to eq(true)

     NoMethodError:
       undefined method `lock' for #<SecretSecurity:0x00007fa1a222c978>
     # ./spec/secret_security_spec.rb:7
```

Created lock method in the SecretSecurity class.

```
Failure/Error: expect(subject.unlock).to eq(false)

     NoMethodError:
       undefined method `unlock' for #<SecretSecurity:0x00007fc82a983588 @locked=true>
       Did you mean?  lock
     # ./spec/secret_security_spec.rb:13
```

Created the unlock method for the SecretSecurity class. 
Also, created a new instance variable in SecretDiary class which has the value of a new instance of the SecretSecurity class.

At this point, the SecretDiary class has the lock and unlock methods calling on the SecretSecurity class methods lock and unlock.

```
Failure/Error: raise "Can't add an entry. Diary is locked!" if locked?

     NoMethodError:
       undefined method `locked?' for #<SecretDiary:0x00007f84889eb8a8>
       Did you mean?  lock
     # ./lib/secret.rb:13:in `add_entry'
     # ./spec/secret_spec.rb:9
```

Created method locked? which will show whether the diary is locked or unlocked.

All in all, I had to use stubs in order to allow the tests to work (see README file with the commits)

IRB Feature Test:

```
2.6.0 :001 > require './lib/secret.rb'
 => true
2.6.0 :002 > diary = SecretDiary.new
 => #<SecretDiary:0x00007f8bfe10f4a0 @security=#<SecretSecurity:0x00007f8bfe10f478 @locked=true>, @entry=nil, @entries=[]>
2.6.0 :003 > diary.locked?
 => true
2.6.0 :004 > diary.unlock
 => false
2.6.0 :005 > diary.unlocked?
 => true
2.6.0 :006 > diary.add_entry("Hello!")
 => "Hello!"
2.6.0 :007 > diary.get_entries
 => ["Hello!"]
2.6.0 :008 > diary.add_entry("I made it!!!")
 => "I made it!!!"
2.6.0 :009 > diary.get_entries
 => ["Hello!", "I made it!!!"]
2.6.0 :010 > diary.lock
 => true
2.6.0 :011 > diary.locked?
 => true
```
---