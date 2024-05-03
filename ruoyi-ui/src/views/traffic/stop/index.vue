<!-- <template>
  <div>
    <div class="info">
      <p>
        车位：<span>{{ spotName }}</span>
      </p>
      <p>
        状态：<span>{{ spotState }}</span>
      </p>
    </div>
    <div id="container"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      spotName: "-",
      spotState: "-",
    };
  },
  mounted() {
    this.initMap();
  },
  methods: {
    initMap() {
      const map = new BMapGL.Map("container", {
        indoorControl: true,
        showControls: true,
      });
      const center = new BMapGL.Point(116.33292006683187, 39.79396372676026);
      map.centerAndZoom(center, 19);
      map.enableScrollWheelZoom();
      map.disablePinchToZoom();
      map.disableRotateGestures();
      map.setTilt(60);

      const parking = new BMapGL.ParkingSpot({
        callback: (res) => {
          this.sportName = res.properties.name;
          this.sportState = res.state;
        },
      });
      map.addParkingSpot(parking);
    },
  },
};
</script>

<style scoped>
body,
html {
  overflow: hidden;
  height: 100%;
  margin: 0;
  padding: 0;
}
#container {
  /* width: 100%; */
  height: 800px;
  /* color:''#657d95'' */
}
.info {
  z-index: 999;
  width: auto;
  padding: 0 10px;
  margin-left: 1.25rem;
  position: fixed;
  bottom: 1rem;
  background-color: #fff;
  border-radius: 0.25rem;
  line-height: 24px;
  font-size: 14px;
  color: #666;
  box-shadow: 0 2px 6px 0 rgba(27, 142, 236, 0.5);
}
</style> -->
