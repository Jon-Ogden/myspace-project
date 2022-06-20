import { useContext, useState } from "react"
import { AuthContext } from "../../providers/AuthProvider"

const Login = () => {
    const {login} = useContext(AuthContext);
    const [email, setEmail] = useState('example@notreal.com')
    const [password, setPassword] = useState('password')

    const handleSubmit = (e)=>{
        e.preventDefault();
        login({email,password})
    };

    return (
        <>
          <h1>Login</h1>
          <form onSubmit={handleSubmit}>
            <label>Email</label>
            <input
              required
              autoFocus
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
            <label>password</label>
            <input
              required
              autoFocus
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
            <button type='submit'>Login</button>
          </form>
        </>
    );
};

export default Login