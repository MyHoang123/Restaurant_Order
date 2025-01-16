
import Sidebar from './components/Sidebar';
import Navbar from './components/Navbar';
import io from 'socket.io-client';
import { useNavigate } from 'react-router-dom'
import { Cookies } from 'react-cookie'
import './scss/app.scss';
import { useCallback, useEffect, useRef, useState, createContext } from 'react';
export const ElementContextAdmin = createContext()
function AdminLayout({ Children }) {
    const cookies = new Cookies()
    const navigate = useNavigate()
    const [socketOrder, setSocketOrder] = useState(null)
    const mainRef = useRef()
    const handleAddClass = useCallback(() => {
        if (mainRef.current.classList.length === 1) {
            mainRef.current.classList.add('collapsed');
        }
        else {
            mainRef.current.classList.remove('collapsed');
        }
    }, [])
    useEffect(() => {
        if (cookies.get('AccessTokenAdmin') !== undefined) {
            const newSocketOrder = io(`${process.env.REACT_APP_IP_SEVER}`, {
                auth: {
                    token: cookies.get('AccessTokenAdmin')
                }
            })
            setSocketOrder(newSocketOrder)
            return () => {
                newSocketOrder.disconnect()
            }
        }
        else {
            navigate('/admin/login')
        }
    }, [])
    if (cookies.get('AccessTokenAdmin') !== undefined) {
        return (
            <div className='body_admin'>
                <div className='Sidebar_container'>
                    <Sidebar />
                </div>
                <div ref={mainRef} className='main'>
                    <Navbar handleOnclick={handleAddClass} />
                    <main className='content'>
                        <div className='container-fluid p-0'>
                            <ElementContextAdmin.Provider value={{ socketOrder, cookies }}>
                                {Children}
                            </ElementContextAdmin.Provider>
                        </div>
                    </main>
                </div>
            </div>
        );
    }
}

export default AdminLayout;