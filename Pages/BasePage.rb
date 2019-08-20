module BasePage
  def open
    $browser.goto URL
  end
  def close
    $browser.close
  end
end