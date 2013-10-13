# Author::    Hunters  (mailto:fall-2013-hunters@sv.cmu.edu)
# Copyright:: Copyright (c) 2013 Carnegie Mellon University
# License::   Distributes under the same terms as Ruby

# This class is the helper of the Model Product
module ProductsHelper
    def optionsForDaysUsedDropDown days_used
      options_for_select(["Less than 1 week", "1 to 3 months", "3 to 6 months", "6 month to 1 year", "More than 1 year", "More than 5 years"],days_used)
    end
end
