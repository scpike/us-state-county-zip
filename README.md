# US zipcode/city/county/state mapping

## Background

This is a download of us geographic information based on the 2000 census. Read through the [article here](http://mcdc.missouri.edu/webrepts/geography/ZIP.resources.html) for a better understanding of what you're getting. 

These are "ZCTA"s, which are based on USPS zip codes but more directly relate to spacial information (I.E. you can get lat/lon boundaries for them). From the article: 

> ZIP codes are a very messy kind of geography. They were created by the
> U.S. Postal Service as a tool to help deliver the mail more
> efficiently. ("ZIP" is actually an acronym for "Zone Improvement
> Plan", where "Zone" is  a reference to the 2-digit postal zones that
> were used by the post office prior to implementing nationwide ZIP
> codes back in the early 1960's. Because it is an acronym we always use
> the uppercase for it.) ZIP codes have been adopted by marketing people
> and by all kinds of other researchers as a standard geographic area,
> like a city or a county. We see maps of ZIP codes in telephone books
> and from commercial vendors that make us think of them as spatially
> defined areas with precise boundaries, similar to counties. But, from
> the perspective of the agency that defines them, the U.S. Postal
> Service,  ZIP codes are not and never have been such spatial
> entities. They are simply categories for grouping mailing
> addresses. As such, ZIP codes do in most cases resemble spatial areas
> since they are comprised of spatially clustered street ranges. But not
> always. In rural areas, ZIP codes can be collections of lines (rural
> delivery routes) that in reality do no look much like a closed spatial
> area. In areas where there is no mail delivery (deserts, mountains,
> lakes, much of Nevada and Utah) ZIP codes are not really defined. You
> may see maps that show ZIP code boundaries that include such areas,
> but these are not post-office-defined official definitions. An area
> will not be assigned a ZIP code until there is a reason for it,
> i.e. until there needs to be mail delivered there. So the actual
> definition of a ZIP code "boundary" is quite fuzzy at best, and a
> purely extrapolated guess (at what it would be if someone were to
> start receiving mail there) at worst. If you have an application that
> requires extreme geographic precision, especially in sparsely
> populated areas, then you need to avoid using ZIP codes. 

## Usage

Data is available in .csv and .yaml format.

Example usage of the yaml data:

    require 'yaml'

    zipdata = YAML::load( File.open( 'geo-data.yaml' ) )
    puts zipdata["18337"].inspect

