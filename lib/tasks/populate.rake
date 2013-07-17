namespace :db do
  namespace :populate do
    desc "add body parts, move types and positions"
    task basic_types: :environment do
      MoveType.create(name: 'Basic')
      MoveType.create(name: 'Toss')
      MoveType.create(name: 'Torpedo')
      MoveType.create(name: 'Incoming')
      MoveType.create(name: 'Submission')
      MoveType.create(name: 'Turnbuckle')
      MoveType.create(name: 'Up Top')

      BodyPart.create(name: 'Head')
      BodyPart.create(name: 'Neck')
      BodyPart.create(name: 'Back')
      BodyPart.create(name: 'Arm')
      BodyPart.create(name: 'Leg')
      BodyPart.create(name: 'Stamina')

      Position.create(name: 'Standing')
      Position.create(name: 'Behind')
      Position.create(name: 'Beside')
      Position.create(name: 'Bent')
      Position.create(name: 'Sitting')
      Position.create(name: 'Kneeling')
      Position.create(name: 'Face Down')
      Position.create(name: 'Prone')
    end
  end
end
