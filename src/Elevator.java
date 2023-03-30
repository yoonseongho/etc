public class Elevator {
    int pfloor = this.pfloor;
    int dfloor = this.dfloor;
    int f_elevator[] = {1,1,1,1};

    public void Control() {
        int[] compare = {0,0,0,0};
        int gap;
        int Min = 0;
        int i = 0;

        for(i=0; i<4; i++) {
            int temp = (f_elevator[i] - pfloor);
            if(temp < 0) temp = -temp;
            compare[i] = temp;
        }
    }
}