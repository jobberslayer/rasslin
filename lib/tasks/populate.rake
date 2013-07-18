require 'csv'

def position_clean(s)
  return s == 'FaceDown' ? 'Face Down' : s
end

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

    desc "Populate moves from csv file."
    task moves: :environment do
      cvs_text = File.read('db/moves.csv')
      cvs = CSV.parse(cvs_text, headers: true)

      cvs.each do |line|
        row = line.to_hash

        bh = BodyPart.find_by_name(row['Helper'])
        (part, injury) = row['Focus'].split(' + ')
        part = (part == 'Stam') ? 'Stamina' : part
        bo = BodyPart.find_by_name(part)

        mt = MoveType.find_by_name(row['Type'])

        (c_start, o_start) = row['Start Position'].split(' / ')
        csp = Position.find_by_name(position_clean(c_start))
        osp = Position.find_by_name(position_clean(o_start))

        (c_success, o_success) = row['Success Position'].split(' / ')
        cssp = Position.find_by_name(position_clean(c_success))
        ossp = Position.find_by_name(position_clean(o_success))

        (c_fail, o_fail) = row['Fail Position'].split(' / ')
        cfp = Position.find_by_name(position_clean(c_fail))
        ofp = Position.find_by_name(position_clean(o_fail))

        Move.create(
          name: row['Name'],
          body_helper: bh,
          body_opp: bo,
          injure: injury,
          move_type: mt,
          control_start_pos: csp,
          opp_start_pos: osp,
          control_success_pos: cssp,
          opp_success_pos: ossp,
          control_fail_pos: cfp,
          opp_fail_pos: ofp
        )
      end
    end

  end
end
