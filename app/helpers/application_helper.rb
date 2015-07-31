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
end
