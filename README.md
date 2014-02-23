# ckeditor + poltergeist

[![Build Status](https://travis-ci.org/mtsmfm/ckeditor-test.png?branch=master)](https://travis-ci.org/mtsmfm/ckeditor-test)

Poltergeist (or Phantomjs) perhaps has a bug.

In the following code, raise TimeoutError sometimes.

```ruby
require 'spec_helper'

feature 'users', js: true do
  100.times do
    scenario 'test' do
      visit '/users/new'

      find('body').click
      find('body')
    end
  end
end
```

```
Failure/Error: find('body')
     Capybara::Poltergeist::TimeoutError:
            Timed out waiting for response to {"name":"find","args":["css","body"]}. It's possible that this happened because something took a very long time (for example a page load was slow). If so, setting the Poltergeist :timeout option to a higher value will help (see the docs for details). If increasing the timeout does not help, this is probably a bug in Poltergeist - please report it to the issue tracker.
```

The form has a cktext_area.

https://github.com/mtsmfm/ckeditor-test/blob/master/app/views/users/_form.html.erb
