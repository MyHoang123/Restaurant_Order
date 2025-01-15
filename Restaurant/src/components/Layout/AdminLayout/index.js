
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
    const Loading = useRef()
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
    useEffect(() => {
        const handleLoad = () => {
            Loading.current.classList.add('unactive')
          };
          window.addEventListener('load', handleLoad);
          return () => {
            window.removeEventListener('load', handleLoad);
          };
    },[])
    if (cookies.get('AccessTokenAdmin') !== undefined) {
        return (
            <div className='body_admin'>
                <div ref={Loading} className='load_admin'>
                    <div className="box-of-star1">
                        <div className="star star-position1"></div>
                        <div className="star star-position2"></div>
                        <div className="star star-position3"></div>
                        <div className="star star-position4"></div>
                        <div className="star star-position5"></div>
                        <div className="star star-position6"></div>
                        <div className="star star-position7"></div>
                    </div>
                    <div className="box-of-star2">
                        <div className="star star-position1"></div>
                        <div className="star star-position2"></div>
                        <div className="star star-position3"></div>
                        <div className="star star-position4"></div>
                        <div className="star star-position5"></div>
                        <div className="star star-position6"></div>
                        <div className="star star-position7"></div>
                    </div>
                    <div className="box-of-star3">
                        <div className="star star-position1"></div>
                        <div className="star star-position2"></div>
                        <div className="star star-position3"></div>
                        <div className="star star-position4"></div>
                        <div className="star star-position5"></div>
                        <div className="star star-position6"></div>
                        <div className="star star-position7"></div>
                    </div>
                    <div className="box-of-star4">
                        <div className="star star-position1"></div>
                        <div className="star star-position2"></div>
                        <div className="star star-position3"></div>
                        <div className="star star-position4"></div>
                        <div className="star star-position5"></div>
                        <div className="star star-position6"></div>
                        <div className="star star-position7"></div>
                    </div>
                    <div data-js="astro" className="astronaut">
                        <div className="head"></div>
                        <div className="arm arm-left"></div>
                        <div className="arm arm-right"></div>
                        <div className="body">
                            <div className="panel"></div>
                        </div>
                        <div className="leg leg-left"></div>
                        <div className="leg leg-right"></div>
                        <div className="schoolbag"></div>
                    </div>
                </div>
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