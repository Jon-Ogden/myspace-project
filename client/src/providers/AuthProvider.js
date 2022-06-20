import axios from 'axios'
import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'

export const AuthContext = React.createContext();

const AuthProvider = ({children})=> {
    const [user, setUser] = useState(null)
    const navigate = useNavigate();

    const logout = () => {
        setUser(null)
        navigate('/')
    }

    return (
        <AuthContext.Provider value={{user, logout}}>
            {children}
        </AuthContext.Provider>
    )
}

export default AuthProvider