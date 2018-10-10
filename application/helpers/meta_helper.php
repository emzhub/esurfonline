<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    function meta($page_title) {
        $meta = '<meta charset="utf-8">';
        $title= 'Esurf-Online';
        $keywords='information technologie,digital marketing,online marketing,internet marketing,digital marketing agency,mobile app development,app developer,digital marketing strategy,digital marketing company,online market,search engine marketing,android app development,web app development,web developer,social media marketing,web design company,information technology courses,marketing plan template,marketing plan,information technology,what is information technology,mobile application development company,ESURF,esurfonline,ESURF Solutions,technical, business solutions,professional web-based services, Mobile App Design/Development, Digital Marketing,Ux/Ui Design';
$url=base_url();
$imgurl=''. site_url("assets/public/img/ESURF-04.PNG").'';
$desc='Your IT-SPECIALIST in Web designs [Of all kinds], Mobile applications, Logotypes ,Adverts & Business Branding.ESURF Solutions was launched to strategically help build your brand, improve your global web presence,& develop more meaningful relationships with your customers.';

        switch ($page_title) {

            case 'E-surf -  Home':
                $meta .= '<meta name="description" content="Your IT-SPECIALIST in Web designs [Of all kinds], Mobile applications, Logotypes ,Adverts & Business Branding.ESURF Solutions was launched to strategically help build your brand, improve your global web presence,& develop more meaningful relationships with your customers.">';
              $meta .= '<meta name="keywords" content="'.$keywords.'">';
                     $meta .= '<meta name="robots" content="index,follow"/>';
                       $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
            case 'E-surf -  Contact_us':
                $meta .= '<meta name="description" content="Esurfonline handles all kinds of website ranging from simple web pages to more dynamic website pages.kindlyl contact us for more information.">';
                $meta .= '<meta name="keywords" content="ESURF,esurfonline,ESURF Solutions,technical, business solutions,professional web-based services, Mobile App Design/Development, Digital Marketing,Ux/Ui Design">';
                  $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
                   case 'E-surf - Blog-Post':
                $meta .= '<meta name="description" content="Esurfonline gives trending updates to stuffs relating to IT fields, treinding programming topics and inspirational quotes for business startups to be fully guided">';
                $meta .= '<meta name="keywords" content="'.$keywords.'">';
                     $meta .= '<meta name="robots" content="index,follow"/>';
                       $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
                 case 'E-surf - Project':
                $meta .= '<meta name="description" content="esurfonline, we have good projects fully complited and loved by our client who had full attention and propper customer service realtionship.">';
                $meta .= '<meta name="keywords" content="'.$keywords.'">';
                     $meta .= '<meta name="robots" content="index,follow"/>';
                       $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
                  case 'E-surf -  Blog':
                $meta .= '<meta name="description" content="Esurfonline gives trending updates to stuffs relating to IT fields, treinding programming topics and inspirational quotes for business startups to be fully guided">';
                $meta .= '<meta name="keywords" content="'.$keywords.'">';
                     $meta .= '<meta name="robots" content="index,follow"/>';
                       $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
                  case 'E-surf -  About-Us':
                $meta .= '<meta name="description" content="We are located in Lekki Lagos, Nigeria. We are formed to provide professional web-based services, Mobile App Design/Development, Digital Marketing,Ux/Ui Design , ranging from custom Development to fully functional dynamic rich projects. Providing the ability to integrate clear, functional, and creative interfaces with technical, business solutions, ESURF Solutions was launched to strategically help build your brand, improve your global web presence, and develop more meaningful relationships with your customers. ">';
                  $meta .= '<meta name="keywords" content="'.$keywords.'">';
                     $meta .= '<meta name="robots" content="index,follow"/>';
                       $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
            default:
                 $meta .= '<meta name="description" content="Your IT-SPECIALIST in Web designs [Of all kinds], Mobile applications, Logotypes ,Adverts & Business Branding.ESURF Solutions was launched to strategically help build your brand, improve your global web presence,& develop more meaningful relationships with your customers.">';
                $meta .= '<meta name="keywords" content="'.$keywords.'">';
                     $meta .= '<meta name="robots" content="index,follow"/>';
                           $meta .= '<meta property="og:title" content="'.$title.'"/>'
                .'<meta property="og:type" content="'.$desc.'"/>'
                .'<meta property="og:image" content="'.$imgurl.'"/>'
                .'<meta property="og:url" content="'.$url.'"/>';
                  $meta .= '<meta name="twitter:card" content="summary"/>'
                .'<meta name="twitter:title" content="'.$title.'"/>'
                .'<meta name="twitter:url" content="'.$url.'"/>'
                .'<meta name="twitter:description" content="'.$desc.'"/>'
                .'<meta name="twitter:image" content="'.$imgurl.'"/>';
                break;
        }
        return $meta;
    }
?>