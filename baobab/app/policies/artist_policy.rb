class ArtistPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end

    def index?
      user.super_admin? || user.organization == record.artist.organization
    end

    def show?
      user.super_admin? || user.organization == record.artist.organization
    end

    def update?
      user.super_admin? || user.organization == record.artist.organization
    end

    def edit?
      update?
    end

    def create?
      user.super_admin? || user.organization == record.artist.organization
    end
end