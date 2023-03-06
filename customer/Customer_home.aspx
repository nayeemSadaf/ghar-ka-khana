<%@ Page Title="" Language="C#" MasterPageFile="~/customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Customer_home.aspx.cs" Inherits="ghar_ka_khana.customer.Customer_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header  first page -->
    <header id="header">
        <div class="intro">
            <div class="overlay">
                <div class="container">
                <div class="row">
                    <div class="intro-text">
                        <h1>Ghar Ka Khana</h1>
                        <p>Restaurant / Coffee </p>
                        <a href="Menu.aspx" class="btn btn-custom btn-lg page-scroll">Place order</a> &nbsp&nbsp&nbsp
                        <a href="../BookATable.aspx" class="btn btn-custom btn-lg page-scroll">Book a Table</a>
                    </div>
                </div>
                </div>
            </div>
        </div>
     </header>
     <!--header end-->

    <!-- Menu Section -->
    <div id="restaurant-menu">
    <div class="section-title text-center center">
        <div class="overlay">
          <h2>Menu</h2>
          <hr>
          <p>Check our full meal menu.</p>
        </div>
    </div>
    <div class="container">
        <div class="row">
          <%--Breakfast & Starters--%>
          <div class="col-xs-12 col-sm-6">
            <div class="menu-section">
              <h2 class="menu-section-title">Breakfast & Starters</h2>
              <hr>
              <div class="menu-item">
                <div class="menu-item-name"> Aloo Paratha </div>
                <div class="menu-item-price"> Rs35 </div>
                <div class="menu-item-description">It is made using unleavened dough rolled with a mixture of mashed potato and spices (amchur, garam masala,) which is cooked on a hot tawa with butter or ghee </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Dosa </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a thin pancake in South Indian cuisine made from a fermented batter of ground black lentils and rice</div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Idli </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a type of savoury rice cake. The cakes are made by steaming a batter consisting of fermented black lentils (de-husked) and rice.</div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Pav Bhaji </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It  is a spiced mixture of mashed vegetables in a thick gravy served with bread. Vegetables in the curry may commonly include potatoes, onions, carrots, chillies, peas, bell peppers and tomatoes.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Puri Sabji </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a spiced mixture of mashed vegetables in a thick gravy served with bread. Vegetables in the curry may commonly include potatoes, onions, carrots, chillies, peas, bell peppers and tomatoes. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Roti Sabji</div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a round flatbread. It is made from stoneground whole wheat flour, traditionally known as gehu ka atta, and water that is combined into a dough.</div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Sattu Paratha </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is made from roasted chickpeas with skin is the main ingredient for this paratha recipe. Finely Chopped Onions, Cilantro, Green Chillies, Fresh Ginger, Garlic are added to the sattu flour to add texture and flavor. </div>
              </div>
            </div>
          </div>
          <%--Main Course--%>
          <div class="col-xs-12 col-sm-6">
            <div class="menu-section">
              <h2 class="menu-section-title">Main Course</h2>
              <hr>
              <div class="menu-item">
                <div class="menu-item-name"> Biryani </div>
                <div class="menu-item-price"> Rs45 </div>
                <div class="menu-item-description"> It is a mixed rice dish . It is made with Indian spices, rice, and usually some type of vegitables or in some cases without any meat, and sometimes, in addition, eggs and potatoes. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Boiled rice with dal and papad </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> Rice is boiled and served with pressue cooked dal and baked papad </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Jeera Rice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is simply rice cooked with cumin seeds & ghee or butter.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Masala Khichdi </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a dish of rice and legumes. Largely, Khichdi is made from rice and lentils, but there are some other regional variations like Bajra Khichdi and Moong Khichdi.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Matar Paneer rice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> Paneer and peas cooked in a spicy and flavorsome curry, and is served with Boiled rice  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Curry Rice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a dish composed with a sauce or gravy seasoned with a mixture of ground spices, served with Boiled rice. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name">veg Pulav </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a spicy rice dish prepared by cooking rice with various vegetables and spices.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Pulav Tadka </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a spicy rice dish prepared by cooking rice with various vegetables and spices. It is served with tadka.</div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <%--Dinner--%>
          <div class="col-xs-12 col-sm-6">
            <div class="menu-section">
              <h2 class="menu-section-title">Dinner</h2>
              <hr>
          
              <div class="menu-item">
                <div class="menu-item-name"> Puri Sabji </div>
                <div class="menu-item-price"> Rs45 </div>
                <div class="menu-item-description"> It is an unleavened deep fried golden brown Indian bread, served with  dry, flavorful potato curry that is spiced with green chilis, onion, ginger, and a host of Indian spices.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Roti Sabji </div>
                <div class="menu-item-price"> Rs350 </div>
                <div class="menu-item-description"> It is a round flatbread. It is made from stoneground whole wheat flour, traditionally known as gehu ka atta, and water that is combined into a dough.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Gobi paratha </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is unleavened whole wheat flatbread stuffed with a spiced grated cauliflower filling. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Kachori sabji </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> potato curry served with a lentil stuffed deep fried snack.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Palak Paratha </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a flat bread with a potato spinach stuffing.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Roti Bhujia </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is a round flatbread. It is made from stoneground whole wheat flour, traditionally known as gehu ka atta, and water that is combined into a dough. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Naan </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description">  It is a round flatbread. It is made from stoneground whole wheat flour, and water that is combined into a dough and baked in tandoor. </div>
              </div>
            </div>
          </div>
          <%--Coffee & Drinks--%>
          <div class="col-xs-12 col-sm-6">
            <div class="menu-section">
              <h2 class="menu-section-title">Coffee & Drinks</h2>
              <hr>
              <div class="menu-item">
                <div class="menu-item-name"> Iced Americano </div>
                <div class="menu-item-price"> Rs35 </div>
                <div class="menu-item-description"> Espresso shots topped with cold water produce a light layer of crema, then served over ice.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Banana smoothie </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description">Banana juice is a sweet and creamy combination of ripe banana, apple, honey and milk</div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Coffee </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> is a drink prepared from roasted coffee beans  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Pomegranate Juice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description">  Pomegranate juice is made from the fruit of the Pomegranate. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> SugarCane Juice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> SugarCane juice is made from the fruit of the SugarCane. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Orange Juice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> Orange juice is made from the fruit of the Orange</div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> StrawBerry Juice </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> StrawBerry juice is made from the fruit of the StrawBerry </div>
              </div>
            </div>
          </div>
          <%--Desserts--%>
          <div class="col-xs-12 col-sm-12">
            <div class="menu-section">
              <h2 class="menu-section-title">Desserts</h2>
              <hr>
              <div class="menu-item">
                <div class="menu-item-name"> Gulab Jamun </div>
                <div class="menu-item-price"> Rs35 </div>
                <div class="menu-item-description"> Gulab jamun are soft delicious berry sized balls made with milk solids, flour & a leavening agent. </div>
              </div>
          
              <div class="menu-item">
                <div class="menu-item-name"> Rasgulla </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is made by curdling milk then separating the chena and whey by muslin cloth. The drained chena is then kneded and then rolled to balls. These are cooked in suger syrup untill soft and spongy.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Bundiya </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is an Indian dessert made from sweetened, fried chickpea flour.  </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Jalebi </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> Jalebi is a spiral shaped crisp & juicy sweet made with all-purpose flour, gram flour and sugar syrup. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Gazar ka Halwa </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description"> It is made by simmering grated carrots with full fat milk and ghee. It is delicately scented eith cardomom powder and garnished with chopped nuts. </div>
              </div>
              <div class="menu-item">
                <div class="menu-item-name"> Kheer </div>
                <div class="menu-item-price"> Rs30 </div>
                <div class="menu-item-description">  It is sweet dish of rice cooked with milk, raisins and cardamom, garnished with almonds. </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- Gallery Section -->
    <div id="portfolio">
      <div class="section-title text-center center">
        <div class="overlay">
          <h2>Gallery</h2>
          <hr>
          <p>Few pictures of the food we serve.</p>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="categories">
            <ul class="cat">
              <li>
                <ol class="type">
                  <li><a href="#" data-filter="*" class="active">All</a></li>
                  <li><a href="#" data-filter=".breakfast">Breakfast</a></li>
                  <li><a href="#" data-filter=".lunch">Lunch</a></li>
                  <li><a href="#" data-filter=".dinner">Dinner</a></li>
                    <li><a href="#" data-filter=".dessert">Desserts</a></li>
                     <li><a href="#" data-filter=".drinks">Drinks</a></li>
                </ol>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="row">
          <div class="portfolio-items">
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/Alooparatha.jpg" title="Aloo Paratha" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Aloo Paratha</h4>
                  </div>
                  <img src="../assets/img/portfolio/Alooparathasmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/dosalarge.jpg" title="Dosa" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Dosa</h4>
                  </div>
                  <img src="../assets/img/portfolio/dosasmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/idlilarge.jpg" title="Idli" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Idli</h4>
                  </div>
                  <img src="../assets/img/portfolio/idlismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/Pavbhajilarge.jpg" title="Pav Bhaji" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Pav Bhaji</h4>
                  </div>
                  <img src="../assets/img/portfolio/Pavbhajismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dinner">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/purisbjilarge.jpg" title="Puri Sabji" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Puri Sabji</h4>
                  </div>
                  <img src="../assets/img/portfolio/purisbjismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dinner">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/rotisbjilarge.jpg" title="Roti Sabji" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Roti Sabji</h4>
                  </div>
                  <img src="../assets/img/portfolio/rotisbjismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/sattularge.jpg" title="Sattu Paratha" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Sattu Paratha</h4>
                  </div>
                  <img src="../assets/img/portfolio/sattusmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dessert">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/gulablarge.jpg" title="Gulab Jamun" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Gulab Jamun</h4>
                  </div>
                  <img src="../assets/img/portfolio/gulabsmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            
            <div class="col-sm-6 col-md-4 col-lg-4 dessert">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/rasgullalarge.jpg" title="Rasgulla" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Rasgulla</h4>
                  </div>
                  <img src="../assets/img/portfolio/rasgullasmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dessert">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/jalebilarge.jpg" title="Jalebi" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Jalebi</h4>
                  </div>
                  <img src="../assets/img/portfolio/jalebismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/biryanilarge.jpg" title="Biryani" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Biryani</h4>
                  </div>
                  <img src="../assets/img/portfolio/biryanismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div> 
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/chawallarge.jpg" title="Plain Chawal" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Plain Chawal</h4>
                  </div>
                  <img src="../assets/img/portfolio/chawalsmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/jeeraricelarge.jpg" title="Jeera Rice" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Jeera Rice</h4>
                  </div>
                  <img src="../assets/img/portfolio/jeeraricesmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div> 
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/masalakhichdilarge.jpg" title="Masala Khichdi" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Masala Khichdi</h4>
                  </div>
                  <img src="../assets/img/portfolio/masalakhichdismall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div> 
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
              <div class="portfolio-item">
                <div class="hover-bg">
                  <a href="../assets/img/portfolio/matarlarge.jpg" title="Matar Paneer Rice" data-lightbox-gallery="gallery1">
                    <div class="hover-text">
                      <h4>Matar Paneer rice</h4>
                    </div>
                    <img src="../assets/img/portfolio/matarsmall.jpg" class="img-responsive" alt="Project Title">
                  </a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dessert">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/bundiyalarge.jpg" title="Bundiya" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Bundiya</h4>
                  </div>
                  <img src="../assets/img/portfolio/bundiyasmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/chilkalarge.jpg" title="chilka Roti" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Chilka Roti</h4>
                  </div>
                  <img src="../assets/img/portfolio/chilkasmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 lunch"> 
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/currylarge.jpg" title="Curry Rice" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Curry Rice</h4>
                  </div>
                  <img src="../assets/img/portfolio/currysmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div> 
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dessert">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/gazarlarge.jpg" title="Gazar ka Halwa" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Gazar ka Halwa</h4>
                  </div>
                  <img src="../assets/img/portfolio/gazarsmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div> 
            </div> 
            <div class="col-sm-6 col-md-4 col-lg-4 dinner">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/gobilarge.jpg" title="Gobi paratha" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Gobi paratha</h4>
                  </div>
                  <img src="../assets/img/portfolio/gobismall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dinner"> 
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/kachorilarge.jpg" title="Kachori Sabji" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Kachori sabji</h4>
                  </div>
                  <img src="../assets/img/portfolio/kachorismall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dessert"> 
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/kheerlarge.jpg" title="Kheer" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Kheer</h4>
                  </div>
                  <img src="../assets/img/portfolio/kheersmall.jpg" class="img-responsive" alt="Project Title"> </a> </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dinner">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/naanlarge.jpg" title="Naan" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Naan</h4>
                  </div>
                  <img src="../assets/img/portfolio/naansmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dinner">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/palaklarge.jpg" title="Palak Paratha" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Palak Paratha</h4>
                  </div>
                  <img src="../assets/img/portfolio/palaksmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 breakfast">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/pastalarge.jpg" title="Pasta" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Pasta</h4>
                  </div>
                  <img src="../assets/img/portfolio/pastasmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 dinner">
              <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/rotibhujialarge.jpg" title="Roti Bhujia" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Roti Bhujia</h4>
                  </div>
                  <img src="../assets/img/portfolio/rotibhujiasmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
                <div class="portfolio-item">
                <div class="hover-bg"> <a href="../assets/img/portfolio/pulavricelarge.jpg" title="Plain Pulav" data-lightbox-gallery="gallery1">
                  <div class="hover-text">
                    <h4>Plain Pulav</h4>
                  </div>
                  <img src="../assets/img/portfolio/pulavricesmall.jpg" class="img-responsive" alt="Project Title"> </a> 
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 lunch">
              <div class="portfolio-item">
                <div class="hover-bg">
                  <a href="../assets/img/portfolio/pulavtadkalarge.jpg" title="Pulav Tadka" data-lightbox-gallery="gallery1">
                    <div class="hover-text">
                      <h4>Pulav Tadka</h4>
                    </div>
                    <img src="../assets/img/portfolio/pulavtadkasmall.jpg" class="img-responsive" alt="Project Title">
                  </a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/americanolarge.jpg" title="Iced Americano" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>Iced Americano</h4>
                            </div>
                            <img src="../assets/img/portfolio/americanosmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/bananalarge.jpg" title="Banana Juice" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>Banana Juice</h4>
                            </div>
                            <img src="../assets/img/portfolio/bananasmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/coffeelarge.jpg" title="Coffee" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>Coffee</h4>
                            </div>
                            <img src="../assets/img/portfolio/coffeesmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/pomelarge.jpg" title="Pomegranate Juice" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>Pomegranate Juice</h4>
                            </div>
                            <img src="../assets/img/portfolio/pomesmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/sugarlarge.jpg" title="Sugarcane Juice" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>SugarCane Juice</h4>
                            </div>
                            <img src="../assets/img/portfolio/sugarsmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/orangelarge.jpg" title="Orange Juice" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>Orange Juice</h4>
                            </div>
                            <img src="../assets/img/portfolio/orangesmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-4 drinks">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="../assets/img/portfolio/strawlarge.jpg" title="StrawBerry Juice" data-lightbox-gallery="gallery1">
                            <div class="hover-text">
                                <h4>StrawBerry Juice</h4>
                            </div>
                            <img src="../assets/img/portfolio/strawsmall.jpg" class="img-responsive" alt="Project Title">
                        </a>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- Gallery end -->

    <!-- About Section -->
    <div id="about">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-md-6 ">
            <div class="about-img"><img src="../assets/img/about.jpeg" class="img-responsive" alt=""></div>
          </div>
          <div class="col-xs-12 col-md-6">
            <div class="about-text">
              <h2>Our Restaurant</h2>
              <hr>
              <p>Our Restaurant  is committed to provide top-quality food for every outsiders which has home made food with no extra oil and spices.It has different home made dishes available for every one.Any Person can enjoy our tasty food anywhere.</p>
              <p>Our Missions is to make customers happy and also to give our customers a place to celebrate life’s special moments by offering the best food, service, and ambiance in Ranchi.</p>
            </div>
          </div>
        </div>
      </div>
    </div>   
    <!-- About end -->

   
    <!--contact end -->
</asp:Content>
