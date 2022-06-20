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

    const login = () => {
        console.log('login func called')
    }

    const register = () => {
        console.log('register func called')
    }

    return (
        <AuthContext.Provider value={{user, logout, login, register}}>
            {children}
        </AuthContext.Provider>
    )
}

export default AuthProvider