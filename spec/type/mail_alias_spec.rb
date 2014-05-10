require 'spec_helper'

include Specinfra::Helper::RedHat

describe mail_alias('daemon') do
  it { should be_aliased_to "root" }
end

describe mail_alias('invalid-recipient') do
  it { should_not be_aliased_to "foo" }
end
