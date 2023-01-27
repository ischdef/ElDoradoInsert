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
// Default = 1.5mm
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
    
    [   "Tokens & Cards Box",
        [
            [ BOX_SIZE_XYZ, [ 254, 54, 46 ] ],
            [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS, 10],
                    [ LID_PATTERN_THICKNESS, 1.5],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "EL DORADO"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  

                    [ LID_PATTERN_N1,               10 ],
                    [ LID_PATTERN_N2,               10 ],
                    [ LID_PATTERN_ANGLE,            60 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       140 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ],
                ]
            ],
            [ BOX_COMPONENT,
                [   "PlayerBoards",
                    [ CMP_SHAPE, SQUARE ],
                    [ POSITION_XY, [CENTER, 0] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 251, 14, 41] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, f, f, f ] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 5 ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30 ],
                    [ CMP_CUTOUT_DEPTH_PCT, 10 ],
                ],
            ],
            [ BOX_COMPONENT,
                [   "VulcanoTokens",
                    [ CMP_SHAPE, HEX ],
                    [ CMP_SHAPE_ROTATED_B, t],
                    [ POSITION_XY, [0, MAX] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 85, 36, 34] ],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, t ] ],
                    //[ CMP_CUTOUT_WIDTH_PCT, 50 ],
                    [ CMP_CUTOUT_DEPTH_PCT, 1 ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30 ],
                ],
            ],
            [ BOX_COMPONENT,
                [   "Blockades",
                    [ CMP_SHAPE, SQUARE ],
                    [ CMP_SHAPE_ROTATED_B, t],
                    [ POSITION_XY, [MAX, MAX] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 126, 15, 25] ],
                ],
            ],
            [ BOX_COMPONENT,
                [   "Market Cards",
                    [ CMP_SHAPE, SQUARE ],
                    [ POSITION_XY, [110, CENTER] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 68, 16, 44] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 30 ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30 ],
                    [ CMP_CUTOUT_DEPTH_PCT, 30 ],
                ],
            ],
            [ BOX_COMPONENT,
                [   "Market Starter Cards",
                    [ CMP_SHAPE, SQUARE ],
                    [ POSITION_XY, [MAX, CENTER] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 68, 16, 44] ],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ CMP_CUTOUT_WIDTH_PCT, 30 ],
                    [ CMP_CUTOUT_HEIGHT_PCT, 30 ],
                    [ CMP_CUTOUT_DEPTH_PCT, 30 ],
                ],
            ],
        ]
    ]        
];

MakeAll();