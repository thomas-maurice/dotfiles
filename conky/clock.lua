conky.config = {
  alignment = 'bottom_right',
  background = false,
  border_width = 0.5,
  cpu_avg_samples = 4,
  default_color = 'white',
  default_outline_color = 'grey',
  default_shade_color = 'black',
  draw_borders = true,
  draw_graph_borders = true,
  draw_outline = false,
  draw_shades = false,
  use_xft = true,
  font = 'DejaVu Sans Mono:size=10',
  gap_x = 30,
  gap_y = 35,
  maximum_width = 400,
  minimum_height = 5,
  minimum_width = 5,
  net_avg_samples = 2,
  double_buffer = true,
  out_to_console = false,
  out_to_stderr = false,
  extra_newline = false,
  own_window = true,
  own_window_colour = '000000',
  own_window_class = 'Conky',
  own_window_argb_visual = true,
  own_window_type = 'override',
  own_window_transparent = true,
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  stippled_borders = 0,
  update_interval = 1,
  uppercase = false,
  use_spacer = 'none',
  show_graph_scale = false,
  show_graph_range = false
}

conky.text = [[
  $color${font}${font Open Sans:size=50}$alignc${time %H:%M:%S}$font$color${font Open Sans:size=15}
  $alignr${time %A}, ${time %d %b %Y}$font$color
]]
