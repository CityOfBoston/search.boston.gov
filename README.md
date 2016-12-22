<img src="https://cloud.githubusercontent.com/assets/9234/19400090/8c20c53c-9222-11e6-937c-02bce55e5301.png" alt="City of Boston" width="150" />

The source code for [search.boston.gov](https://search.boston.gov), the search for Boston.gov. Search is powered by Swiftype.

## Developers

This is a Rails 5 application that connects to the Swiftype API. In order to get setup you should:

 * Checkout the code
 * Install any necessary gems with `bundle install`
 * Create a `.env` file with your environment specific configuration. 
 
```
SWIFTYPE_API_KEY={SWIFTYPE_KEY}
SWIFTYPE_ENGINE_SLUG={SWIFTYPE_SLUG}
```

 * Run `rake db:migrate`
 * Use foreman to run everything with `foreman start`

We also use Boston.gov to create layouts for us. This allows us to build external applications, but use layouts from our primary Drupal site. This project includes a rake task to update the layout. If you don't need this functionality, set the controller to use a different layout which can be found on disk instead of the database where we store our templates.

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [LICENSE](LICENSE.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.

#### Use the templates

* [Suggest a feature](https://github.com/CityOfBoston/boston.gov/blob/develop/guides/03-contributing-to-boston.gov.md#feature-template)
* [Report a bug](https://github.com/CityOfBoston/boston.gov/blob/develop/guides/03-contributing-to-boston.gov.md#bug-report-template)
* [Submit a pull request](https://github.com/CityOfBoston/boston.gov/blob/develop/guides/03-contributing-to-boston.gov.md#pull-request-template)
