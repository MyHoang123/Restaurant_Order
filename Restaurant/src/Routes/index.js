
import AdminLayout from "~/components/Layout/AdminLayout";
import Order from "~/components/Layout/MobileLayout";
import Dashboard from "~/pages/Dashboard";
import createQr from "~/pages/CreateQR";
import showTable from "~/pages/Table";
import HomeOrder from "~/pages/HomeMobile";
import OrderCard from "~/pages/CardMobile";
import BillMobileOrder from "~/pages/BillMobileOrder";
import DetaiProductMobileOrder from "~/pages/DetailProductOrder";

const publicRoutes = [
    { path: '/showtable', component: showTable, layout: AdminLayout, },
    { path: '/createqr', component: createQr, layout: AdminLayout, },
    { path: '/', component: Dashboard, layout: AdminLayout, },
]
const mobileRoutes = [
    { path: '/order/detail/:IdProduct', component: DetaiProductMobileOrder, layout: Order, },
    { path: '/order', component: HomeOrder, layout: Order, },
    { path: '/order/card', component: OrderCard, layout: Order, },
    { path: '/order/billorder', component: BillMobileOrder, layout: Order, },
]
export { publicRoutes, mobileRoutes }