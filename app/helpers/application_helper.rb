module ApplicationHelper
    def car_icon_svg
    raw <<~SVG
      <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M5 11L6.5 6.5C6.8 5.6 7.6 5 8.5 5H15.5C16.4 5 17.2 5.6 17.5 6.5L19 11" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
        <rect x="3" y="11" width="18" height="6" rx="2" stroke="white" stroke-width="1.5"/>
        <circle cx="7" cy="17" r="1.5" fill="white"/>
        <circle cx="17" cy="17" r="1.5" fill="white"/>
      </svg>
    SVG
  end
end
