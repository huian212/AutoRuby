module BasePage
  def open
    $browser.goto URL
  end
  def close
    $browser.close
  end
  def title
    $browser.title
  end
end