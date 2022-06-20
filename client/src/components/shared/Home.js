import { useContext } from "react";
import { AuthContext } from "../../providers/AuthProvider";

const Home = () => {
    const {user} = useContext(AuthContext)

    return(
        <div>
            <h1>Home</h1>
            {user ? <p>Hello, {user.name}</p> : <p>not logged in</p>}
        </div>
    )
}

export default Home;