require "hashish/version"

module Hashish

  def to_hash
    h = {}
    members.each { |x| h[x] = self.send(x) }
    h
  end

  def members
    if self.respond_to? :to_h
      self.to_h.keys
    else
      self.instance_variables.map do |x|
        x.to_s.sub(/\@/, '').to_sym
      end
    end
  end

end
