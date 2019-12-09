version = 3 -- Lua Version. Dont touch this
ScenarioInfo = {
    name = "beach survival",
    description = "Modification of the original Desert Swarm v1c Beta. Modification made by Satan_",
    preview = '',
    map_version = 6,
    type = 'skirmish',
    starts = true,
    size = {1024, 1024},
    map = '/maps/beach_survival.v0006/beach_survival.scmap',
    save = '/maps/beach_survival.v0006/beach_survival_save.lua',
    script = '/maps/beach_survival.v0006/beach_survival_script.lua',
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
