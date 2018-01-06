# LA Computer Company Back end Sheets

This is the back end website to create Refurbished Sheets for computers, displays as well as keep track of On Sites Appointments.

* Ruby version: 2.4.0
* Using Bootstrap: 4.0.0-beta

### Welcome to Version 5
Some of the things that were updated
* Updated looks on some sheet
* Updated onsite section to where it will show a calendar
* Updated other functionality for the site

### To Upload to the server
* Log in to admin user and pull files
* Log in to app admin and run following commands within app folder
<pre><code>$bundle install --deployment --without development test
$bundle exec rails assets:precompile db:migrate RAILS_ENV=production
$passenger-config restart-app
</code></pre>
