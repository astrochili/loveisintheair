return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 100,
  backgroundcolor = { 227, 227, 227 },
  properties = {
    ["background"] = "1.jpg",
    ["solidcolor"] = "#ff56b4f7"
  },
  tilesets = {},
  layers = {
    {
      type = "objectgroup",
      name = "Lines",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      name = "Zones",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 83,
          name = "",
          type = "red",
          shape = "rectangle",
          x = 568,
          y = 640,
          width = 184,
          height = 152,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Triggers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 84,
          name = "switch",
          type = "trigger",
          shape = "rectangle",
          x = 248,
          y = 624,
          width = 176,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {
            ["targetId"] = 83
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Solid",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 85,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 32,
          height = 960,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 86,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 992,
          width = 1024,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 87,
          name = "",
          type = "",
          shape = "rectangle",
          x = 992,
          y = 192,
          width = 32,
          height = 800,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 88,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 1024,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "Entities",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 72,
          name = "player",
          type = "green",
          shape = "ellipse",
          x = 328,
          y = 488,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "body",
          type = "red",
          shape = "rectangle",
          x = 464,
          y = 440,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "exit",
          type = "trigger",
          shape = "rectangle",
          x = 992,
          y = 32,
          width = 32,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {
            ["targetId"] = 83
          }
        },
        {
          id = 96,
          name = "key",
          type = "green",
          shape = "ellipse",
          x = 328,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "key",
          type = "red",
          shape = "ellipse",
          x = 440,
          y = 112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 98,
          name = "key",
          type = "blue",
          shape = "ellipse",
          x = 600,
          y = 272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 99,
          name = "key",
          type = "yellow",
          shape = "ellipse",
          x = 664,
          y = 120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
