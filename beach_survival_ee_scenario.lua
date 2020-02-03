version = 3
ScenarioInfo = {
    name = "Beach Survival EE",
    description = "Modification of the original Desert Swarm v1c Beta. Modification made by Satan_ and further improved by EntropyWins. See README.md file for Version History",
    preview = '',
    map_version = 5,
    type = 'skirmish',
    starts = true,
    size = {1024, 1024},
    map = '/maps/beach_survival_ee.v0005/beach_survival_ee.scmap',
    save = '/maps/beach_survival_ee.v0005/beach_survival_ee_save.lua',
    script = '/maps/beach_survival_ee.v0005/beach_survival_ee_script.lua',
    norushradius = 100,
    Configurations = {
        ['standard'] = {
            teams = {
                {
                    name = 'FFA',
                    armies = {'ARMY_1', 'ARMY_2', 'ARMY_3', 'ARMY_4', 'ARMY_8', 'ARMY_7', 'ARMY_5', 'ARMY_6'}
                },
            },
            customprops = {
                ['ExtraArmies'] = STRING( 'ARMY_SURVIVAL_ALLY ARMY_SURVIVAL_ENEMY' ),
            },
        },
    },
}
