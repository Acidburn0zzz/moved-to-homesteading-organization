class SamplesController < ApplicationController
  # HACK everything in the SamplesController and samples views are just for illustration
  # this hash constant is avoid using the database for the samples
  ACTIVITIES = {
    :audio    => ["bramble","slc","salt lake city","james miska","folk","diy"],
    :bookmark => ["arcade fire","html5","google","chrome","experiment","toread","private"],
    :code     => ["ruby","rails","helper"],
    :checkin  => ["blank spaces", "rb.la", "nerd club", "la", "los angeles"],
    :event    => ["godspeed","music","show","live","los angeles","la"],
    :list     => ["zombies","28 days later","stacey","10 rules"],
    :note     => ["larb"],
    :photo    => ["portland","nintendo","video games","shelf","nate","n8","8-bit","collection","shelf"],
    :product  => ["shirt","tshirt","forest","situationist","green","trees","cityscape"],
    :quote    => ["crimethinc","anarchism","without adjectives"],
    :review   => ["spider-man","ultimate spider-man","ultimate","comic","bendis","bagley","babe ruth","hank aaron","stan lee","jack kirby"],
    :status   => ["homesteading","data","website","idea","open web","personal web","snowflake"],
    :video    => ["cat","dog","puppie","pit bull","bike house","salt lake city"]
  }

  before_filter :set_tags
  before_filter :set_content_type

  def set_tags
    @tags = SamplesController::ACTIVITIES[action_name.to_sym]
  end

  def set_content_type
    @content_type = action_name
  end
end
