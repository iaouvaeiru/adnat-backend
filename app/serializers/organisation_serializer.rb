class OrganisationSerializer < ActiveModel::Serializer
  attributes :id, :name, :hourly_rate
  def org_shifts
    shifts = self.shifts
  end
end
