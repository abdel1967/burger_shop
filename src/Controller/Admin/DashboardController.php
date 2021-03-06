<?php

namespace App\Controller\Admin;

use App\Entity\Category;

use App\Entity\Product;
use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Field\MoneyField;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return parent::index();
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Burger Shop Project');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home text-success');
        yield MenuItem::linkToCrud('Users', 'fa fa-user text-success', User::class);
        yield MenuItem::linkToCrud('Categories', 'fa fa-list text-success', Category::class);
        yield MenuItem::linkToCrud('Products', 'fa fa-tag text-success', Product::class);

    }
}