
<script>
import {loginBims} from '@/api/login'
import {removeToken, setToken} from "@/utils/auth";

export default {
  created() {
    const  sessionId = this.$route.query.sessionId;
      loginBims(sessionId).then( res => {
        removeToken();
        setToken(res.token);
        setTimeout(() => {
          this.$router.push({path: "/index"}).then()
            .catch(() => {

            });
        }, 500);

      })

  },
  render: function(h) {
    return h() // avoid warning message
  }
}
</script>
