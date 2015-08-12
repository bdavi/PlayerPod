module ApplicationHelper
  BOOTSTRAP_ALERT_FLASH_MAPPING = {
    success: "success",
    danger: "danger",
    info: "info",
    warning: "warning",
    error: "danger",
    notice: "info",
    alert: "warning"
  }

  def get_bootstrap_alert_type(flash_type)
    BOOTSTRAP_ALERT_FLASH_MAPPING[flash_type.to_sym]
  end

  def sanitize_for_display(value_to_sanitize)
    # Sometimes we'll get an array back where we expect a string.
    if value_to_sanitize.class == Array then
      value_to_sanitize = value_to_sanitize.flatten.join(' ')
    end
    sanitize(value_to_sanitize, tags: %w(strong em a), attributes: %w(href))
  end
end
