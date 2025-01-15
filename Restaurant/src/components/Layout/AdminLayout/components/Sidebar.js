import * as Icon from 'react-feather';
import { useRef, useState, memo } from 'react';
import { Link } from 'react-router-dom';


function Sidebar() {
    const [check, setCheck] = useState(0);
    const sideBar = useRef()
    return (

        <nav ref={sideBar} id="sidebar" className="sidebar js-sidebar"
            style={{
                overflowY: 'scroll'
            }}
        >
            <div className="sidebar-content js-simplebar">
                <Link to="/admmin" className="sidebar-brand">
                    <span className="align-middle">Hello Admin</span>
                </Link>
                <ul className="sidebar-nav">
                    <li className="sidebar-header">
                        Pages
                    </li>
                    <li onClick={() => setCheck(0)} className={check === 0 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="/" className="sidebar-link">
                            <Icon.Sliders className="align-middle" />
                            <span className="align-middle">Dashboard</span>
                        </Link>
                    </li>
                    <li className="sidebar-header">
                        Tools & Components
                    </li>

                    <li onClick={() => setCheck(1)} className={check === 1 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.AlignLeft style={{ width: '24px' }} className="align-middle" />
                            <span className="align-middle">Trang Khác</span>
                        </Link>
                    </li>

                    <li onClick={() => setCheck(2)} className={check === 2 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="/showtable" className="sidebar-link">
                            <Icon.Plus style={{ width: '24px' }} className="align-middle" />
                            <span className="align-middle">Bàn</span>
                        </Link>
                    </li>

                    <li onClick={() => setCheck(3)} className={check === 3 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link" href="">
                            <Icon.Grid className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>

                    <li onClick={() => setCheck(4)} className={check === 4 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.AlignLeft className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>

                    <li onClick={() => setCheck(5)} className={check === 5 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="/createqr" className="sidebar-link">
                            <Icon.Plus style={{ width: '24px' }} className="align-middle" />
                            <span className="align-middle">Tạo QR</span>
                        </Link>
                    </li>
                    <li onClick={() => setCheck(6)} className={check === 6 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.Plus style={{ width: '24px' }} className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>
                    <li className="sidebar-header">
                        Web Data
                    </li>
                    <li onClick={() => setCheck(7)} className={check === 7 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.Plus className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>

                    <li onClick={() => setCheck(8)} className={check === 8 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.Plus className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>


                    <li onClick={() => setCheck(9)} className={check === 9 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.Plus className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>

                    <li onClick={() => setCheck(10)} className={check === 10 ? 'sidebar-item active' : 'sidebar-item'}>
                        <Link to="" className="sidebar-link">
                            <Icon.Plus style={{ width: '24px' }} className="align-middle" />
                            <span className="align-middle">Trang khác</span>
                        </Link>
                    </li>
                </ul>

                <div className="sidebar-cta">
                    <div className="sidebar-cta-content">
                        <strong className="d-inline-block mb-2">Upgrade to Pro</strong>
                        <div className="mb-3 text-sm">
                            Are you looking for more components? Check out our premium version.
                        </div>
                        <div className="d-grid">
                            <a href="upgrade-to-pro.html" className="btn btn-primary">Upgrade to Pro</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    );
}

export default memo(Sidebar);