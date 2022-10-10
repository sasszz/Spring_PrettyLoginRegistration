package tylermaxwell.loginregistration.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import tylermaxwell.loginregistration.models.LoginUser;
import tylermaxwell.loginregistration.models.User;
import tylermaxwell.loginregistration.services.UserService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class HomeController {

    private final UserService userService;
    public HomeController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/")
    public String index(Model model){
        // Bind empty User and LoginUser objects to capture form input
        model.addAttribute("reg", new User());
        model.addAttribute("login", new LoginUser());
        return "index.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session){
        return "redirect:/welcome";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
        return "redirect:/welcome";
    }

    @GetMapping("/welcome")
    public String welcome(HttpSession session, Model model) {
        System.out.println(session.getAttribute("userId"));
        // If no userId is found, redirect to log out
        // We get the userId from our session (we need to cast the result to a Long as the 'session.getAttribute("userId")' returns an object
        return "welcome.jsp";

    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // Set userId to null
        // redirect to login/register page
        return "redirect:/";
    }
}
