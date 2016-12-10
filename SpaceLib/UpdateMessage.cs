using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace SpaceLib
{
    public class UpdateMessage
    {
        public class UpdateCharacter
        {
            public Guid guid { get; set; }
            public string grid { get; set; }
            public int x { get; set; }
            public int y { get; set; }
            public int z { get; set; }
        }

        public class UpdateGridVoxel
        {
            public int id { get; set; }
            public byte type { get; set; }
            public byte value { get; set; }
            public UpdateGridVoxel(int i, byte t, byte v)
            {
                id = i;
                type = t;
                value = v;
            }
        }

        public class UpdateGrid
        {
            public string gridName { get; set; }
            public List<UpdateGridVoxel> voxelUpdates { get; set; }
        }

        public string gsa { get; set; }
        public List<UpdateCharacter> userUpdates { get; set; }
        public List<UpdateCharacter> npcUpdates { get; set; }
        public List<UpdateGrid> gridUpdates { get; set; }

        public static void ConstructUpdate()
        {
            UpdateMessage ugs = new UpdateMessage();
            ugs.gsa = "2_3_4";
            UpdateMessage.UpdateCharacter uc = new UpdateMessage.UpdateCharacter();
            uc.grid = "Freaky";
            uc.guid = Guid.Parse("d5172acc-a893-4c6f-8050-fbaab85d1f5e");
            uc.x = 5;
            uc.y = 0;
            uc.z = 5;
            ugs.userUpdates = new List<UpdateMessage.UpdateCharacter>();
            ugs.userUpdates.Add(uc);

            ugs.npcUpdates = new List<UpdateMessage.UpdateCharacter>();
            uc = new UpdateMessage.UpdateCharacter();
            uc.grid = "Freaky";
            uc.x = 5;
            uc.y = 0;
            uc.z = 5;
            ugs.npcUpdates.Add(uc);

            UpdateMessage.UpdateGrid updateGrid = new UpdateMessage.UpdateGrid();
            updateGrid.gridName = "Freaky";
            updateGrid.voxelUpdates = new List<UpdateGridVoxel>();

            UpdateMessage.UpdateGridVoxel ugv = new UpdateGridVoxel(1, 0, 2);
            updateGrid.voxelUpdates.Add(ugv);

            ugv = new UpdateGridVoxel(3, 1, 5);
            updateGrid.voxelUpdates.Add(ugv);

            ugs.gridUpdates = new List<UpdateGrid>();
            ugs.gridUpdates.Add(updateGrid);


            string serializedUpdate = Newtonsoft.Json.JsonConvert.SerializeObject(ugs, Formatting.Indented);
            Console.WriteLine(serializedUpdate);
        }
    }
}