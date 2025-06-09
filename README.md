# cicd-rpi-study

라즈베리파이를 활용하여 로컬 환경에서 Spring Boot 애플리케이션의 CI/CD 파이프라인을 구축

GitHub Actions와 Jenkins를 함께 사용하여 자동화된 빌드, 테스트, 배포를 학습

---

## 목표

- GitHub Actions를 이용한 CI 파이프라인 구축
- Jenkins와 연동한 CD 파이프라인 구성
- Docker 이미지 빌드 및 DockerHub에 푸시
- 라즈베리파이에서 Spring Boot 애플리케이션 배포 자동화
- Git Flow 전략 기반의 브랜치 관리

```bash
main      # 실제 운영 배포용 브랜치
develop   # 개발 통합 브랜치
feature/* # 기능 개발 브랜치
