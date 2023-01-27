include <../lib/boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

// This determines whether the default single material version is output, or, if printing in multiple materials, 
// which layer to output.
//
g_print_mmu_layer = "default"; // [ "default" | "mmu_box_layer" | "mmu_label_layer" ]

data =
[
    
    [   "Player",
        [
            [ BOX_SIZE_XYZ, [ 72, 65, 14 ] ],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS, 4 ],  
                ]
            ],
            [ BOX_COMPONENT,
                [   "Cards",
                    [ CMP_SHAPE, SQUARE ],
                    [ POSITION_XY, [CENTER, 0] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 69, 45, 12] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, t ] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 50 ]
                ],
            ],
            [ BOX_COMPONENT,
                [   "Meeple",
                    [ CMP_SHAPE, SQUARE ],
                    [ POSITION_XY, [CENTER, MAX] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 69, 16, 12] ],
                ],
            ],
        ]
    ],
];


MakeAll();