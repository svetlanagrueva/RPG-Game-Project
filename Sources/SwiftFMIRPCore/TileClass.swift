//a position to hold the value for the teleport's other exit and user's current position
struct Position: Equatable{
    public var x: Int
    public var y: Int
    init (x: Int, y: Int){
        self.x = x
        self.y = y
    }
}

public class TileClass: MapTile {
    var type: MapTileType
    var state: String
    
    init(type: MapTileType) {
        self.type = type
        state = ""
    }
}

public class TeleportTileClass:TileClass {
    var used: Bool
    var portal:Position 

 init(position:Position) {
        self.used = false
        self.portal = position// Position(x:0,y:0)
        super.init(type:.teleport) //call the base class initializer
    }

    func setPortal(pos:Position) {
        portal = pos
    }
}