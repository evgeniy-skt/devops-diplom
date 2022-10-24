# Дипломная работа для курса DevOps от Нетологии в Яндекс облаке

1. Зарегистрировать доменное имя (любое на ваш выбор в любой доменной зоне).

    Зарегистрировал доменное имя `ev-gen.info`. В настройках у регистратора в разделе DNS указал сервера Яндекса.
![domain-registration](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/domain-registration.png)

1. Подготовить инфраструктуру с помощью Terraform на базе облачного провайдера YandexCloud.

    Подготовил, описал все ресурсы в папке terraform. Сети, подсети, DNS-зону, dns-записи и виртуальные машины.

![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/yandex-vm-list.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/yandex-dns.png)

1. Настроить внешний Reverse Proxy на основе Nginx и LetsEncrypt.

    Настроил, указал все upstreams.
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/gitlab-cert.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/wordpress-cert.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/alertmanager-cert.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/grafana-cert.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/prometheus-cert.png)

1. Настроить кластер MySQL.

    Настроил.
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/mysql-replication-status.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/mysql-dbs-list.png)

1. Установить WordPress.

    Установил.
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/wordpress-cert.png)

1. Развернуть Gitlab CE и Gitlab Runner.

    Развернул

![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/gitlab-cert.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/gitlab-runner.png)

1. Настроить CI/CD для автоматического развёртывания приложения.

    Добавил деплой скрипт, в котором копирую вордпрес на машину app

![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/gitlab-working-deploy-job.png)

1. Настроить мониторинг инфраструктуры с помощью стека: Prometheus, Alert Manager и Grafana.

![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/prometheus-status.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/alertmanager-status.png)
![](https://github.com/evgeniy-skt/devops-diplom/blob/main/screenshots/grafana-dashboard.png)
