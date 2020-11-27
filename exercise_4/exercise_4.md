### Exercise 4
#### Test-drive the secret diary example:

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.
First organise it into one class only.

Then, when all your tests are green, reorganise it into classes with high cohesion.

This will also involve reorganising your tests!

#### Methodology
First of all I want to feature test how to class instance will be initialize. I will do this in irb.

```
2.7.0 :001 > new_diary = SecretDiary.new
Traceback (most recent call last):
        4: from /usr/share/rvm/rubies/ruby-2.7.0/bin/irb:23:in `<main>'
        3: from /usr/share/rvm/rubies/ruby-2.7.0/bin/irb:23:in `load'
        2: from /usr/share/rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        1: from (irb):1
NameError (uninitialized constant SecretDiary)

```
This shows how I will initialize the class instance and also has provided me with the first test that I will create: Whether I can instatiate a new class instance.

```
describe SecretDiary do
  subject(:new_diary) { described_class.new }
  it "should instatiate a new class of the SecretDiary object" do
    expect(SecretDiary).to respond_to(:new)
  end
end
```
This returns the expected RSpec error:

```
An error occurred while loading ./spec/secret_diary_spec.rb.
Failure/Error:
  describe SecretDiary do
    subject(:new_diary) { described_class.new }
    it "should instatiate a new class of the SecretDiary object" do
      expect(SecretDiary).to respond_to(:new)
    end
  end

NameError:
  uninitialized constant SecretDiary
# ./spec/secret_diary_spec.rb:3:in `<top (required)>'
No examples found.


Finished in 0.00004 seconds (files took 0.07145 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples

```

This test failed because there is no class currently called SecretDiary. 
I will create the class in the secret_diary.rb file, which should then cause the test to pass.

```
class SecretDiary
  
end
```
And it does:

```
Finished in 0.0039 seconds (files took 0.29886 seconds to load)
1 example, 0 failures

```

Secondly I want to use TDD to test the locking function of the diary to ensure that when the diary is 'unlocked' that we can read and write enteries. When the diary is 'locked' all I want to user to receive is an error message telling them the diary is locked.
I will create a lock_status class that will show the user whether the diary is locked/unlocked when called.


  - lock
  - unlock
